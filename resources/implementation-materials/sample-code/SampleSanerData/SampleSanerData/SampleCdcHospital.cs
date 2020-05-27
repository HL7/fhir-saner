using System;
using MathNet.Numerics.Distributions;

namespace SampleSanerData
{
    public class SampleCdcHospital
    {
        /// <summary>
        /// The total number of staffed inpatient beds in the hospital
        /// </summary>
        public int Beds { get; set; }

        /// <summary>
        /// The total number of staffed ICU beds in the hospital
        /// </summary>
        public int IcuBeds { get; set; }

        /// <summary>
        /// The total number of functional ventilators in the hospital
        /// </summary>
        public int Vents { get; set; }

        /// <summary>
        /// The number of inpatient beds currently in use by patients
        /// </summary>
        public int BedsInUse { get; set; }

        /// <summary>
        /// The number of ICU beds currently in use by patients
        /// </summary>
        public int IcuBedsInUse { get; set; }

        /// <summary>
        /// The number of ventilators currently in use by patients
        /// </summary>
        public int VentsInUse { get; set; }

        /// <summary>
        /// Each day, the patient population (the value for BedsInUse) changes by a random amount.  
        /// DeltaBedUseMax is the high end of the percent increase.  
        /// </summary>
        /// <example>
        /// If BedsInUse == 50 and DeltaBedUseMax == 20, the largest possible increase would be 10, 
        /// bringing BedsInUse to 60.
        /// </example>
        public int DeltaBedUseMax { get; set; }

        /// <summary>
        /// Each day, the patient population (the value for BedsInUse) changes by a random amount.  
        /// DeltaBedUseMin is the low end of the percent INCREASE.  It's recommended that this be a 
        /// negative value, so it's possible for the patient census to decrease.  
        /// </summary>
        /// <example>
        /// If BedsInUse == 50 and DeltaBedUseMin == -10, the smallest possible increase would be -5 
        /// (a decrease of 5), bringing BedsInUse to 45.
        /// </example>  
        public int DeltaBedUseMin { get; set; }

        /// <summary>
        /// When the patient population (BedsInUse) changes each day, the number of patients in 
        /// ICU Beds (IcuBedsInUse) also changes.  The delta for IcuBedsInUse is a random percentage 
        /// of the delta for BedsInUse; a certain number of the admissions and discharges from ALL
        /// beds are for ICU beds.  DeltaIcuBedMax is the high end of this random percentage.  
        /// </summary>
        public int DeltaIcuBedMax { get; set; }
        /// <summary>
        /// When the patient population (BedsInUse) changes each day, the number of patients in 
        /// ICU Beds (IcuBedsInUse) also changes.  The delta for IcuBedsInUse is a random percentage 
        /// of the delta for BedsInUse; a certain number of the admissions and discharges from ALL
        /// beds are for ICU beds.  DeltaIcuBedMin is the high end of this random percentage.  
        /// DeltaIcuBedMin should be >= 0; IcuBedsInUse will go down if BedsInUse goes down.
        /// </summary>
        public int DeltaIcuBedMin { get; set; }

        /// <summary>
        /// When IcuBedsInUse changes each day, the number of ventilators in use (VentsInUse)
        /// </summary>
        public int DeltaVentMax { get; set; }
        public int DeltaVentMin { get; set; }

        #region Constructors
        public SampleCdcHospital(int beds, int icuBeds, int vents)
        {
            Initialize(beds, icuBeds, vents);
        }

        public SampleCdcHospital(int beds)
        {
            int icuBeds = TotalIcuBeds(beds);
            int vents = TotalVents(icuBeds);
            Initialize(beds, icuBeds, vents);
        }

        public SampleCdcHospital() 
        {
            int beds = TotalBeds();
            int icuBeds = TotalIcuBeds(beds);
            int vents = TotalVents(icuBeds);
            Initialize(beds, icuBeds, vents);
        }

        private void Initialize(int beds, int icuBeds, int vents)
        {
            Beds = beds;
            IcuBeds = icuBeds;
            Vents = vents;

            DeltaBedUseMax = 15;
            DeltaBedUseMin = -15;
            DeltaIcuBedMax = 80;
            DeltaIcuBedMin = 0;
            DeltaVentMax = 100;
            DeltaVentMin = 0;

            DayOneOccupancy();
        }
        #endregion

        #region Initialize the hospital
        /// <returns>A realistic random number of beds in a hospital</returns>
        /// <remarks>
        /// Totals for the US
        ///  hospitals:      6,146 [1]
        ///  staffed beds: 924,107 [1]
        ///  beds/hospital:   ~150
        ///  largest:        2,259 [2]
        ///  smallest:          19 [3]
        /// </remarks>
        private int TotalBeds()
        {
            int averageBeds = 150;
            int maxBeds = 2259;
            int minBeds = 19;
            double standardDeviation = 100;
            return Convert.ToInt32(RandomFromBetaDist(minBeds, maxBeds, averageBeds, standardDeviation));
        }

        /// <param name="totalInpatientBeds">The total number of inpatient beds in the hospital</param>
        /// <returns>A realistic random number of ICU beds (between 9% and 10%)</returns>
        /// <remarks>"We do know that most systems/countries operate on a relatively fixed ratio of ICU beds to hospital beds of
        /// approximately 2 to 5 ICU beds for every 100 hospital beds in total, while the United States operates with
        /// a very different ratio of 9 to 10 ICU beds per 100 hospital beds in total." [4]</remarks>
        private int TotalIcuBeds(int totalInpatientBeds)
        {
            return RandomPercentOf(totalInpatientBeds, 9, 10);
        }

        /// <param name="totalIcuBeds">The total number of ICU beds in a hospital</param>
        /// <returns>A realistic random number of ventilators (between 60% and 80%)</returns>
        /// <remarks>
        /// Totals for the US
        ///   Ventilators: 62,188 [5]
        ///   Beds:       924,107 [1]
        ///   ICU Bed %:     9-10% [4]
        ///   ICU Beds:   ~87,790
        ///   Vents / ICU Bed: 71%
        /// </remarks>
        private int TotalVents(int totalIcuBeds)
        {
            return RandomPercentOf(totalIcuBeds, 60, 80);
        }

        /// <summary>
        /// Set "in use" numbers for the first day of sample data
        /// </summary>
        private void DayOneOccupancy()
        {
            BedsInUse = RandomPercentOf(Beds, 64, 77);        // [6]
            IcuBedsInUse = RandomPercentOf(IcuBeds, 65, 68);  // [7]
            if (IcuBedsInUse > BedsInUse) { IcuBedsInUse = BedsInUse; }
            VentsInUse = RandomPercentOf(IcuBedsInUse, 20, 70);
        }
        #endregion

        #region Adjust the numbers each day

        /// <summary>
        /// Increment the 
        /// </summary>
        public void Tomorrow()
        {
            int bedChange = RandomPercentOf(Beds, -15, 15);
            int icuChange = RandomPercentOf(bedChange, 0, 80);
            int ventChange = RandomPercentOf(icuChange, 0, 100);

            BedsInUse = Adjust(BedsInUse, bedChange, 0, Beds);
            IcuBedsInUse = Adjust(IcuBedsInUse, icuChange, 0, Math.Min(IcuBeds, BedsInUse));
            VentsInUse = Adjust(VentsInUse, ventChange, 0, Vents);
        }

        private int Adjust(int initial, int delta, int min, int max)
        {
            int newValue = initial + delta;
            if (newValue < min) { return min; }
            if (newValue > max) { return max; }
            return newValue;
        }
        #endregion

        #region Probability helper functions
        /// <summary>
        /// Generate a random integer that is in a percentage range of a provided value.
        /// </summary>
        /// <param name="denominator">The base value of which to take a percentage</param>
        /// <param name="lowPercent">The low end of the range; this can be a negative value</param>
        /// <param name="highPercent">The high end of the range</param>
        private int RandomPercentOf(int denominator, int lowPercent, int highPercent)
        {
            Random rand = new Random();
            int range = highPercent - lowPercent;
            double percentage = ((rand.NextDouble() * range) + lowPercent) / 100;
            double result = denominator * percentage;
            return Convert.ToInt32(result);
        }

        private double RandomFromBetaDist(double min, double max, double mean, double standardDeviation)
        {
            double scale = max - min;
            double location = min;
            double unscaledMean = (mean - min) / scale;
            double unscaledVariance = Math.Pow((standardDeviation / scale), 2);
            double t = unscaledMean / (1 - unscaledMean);
            double b = ((t / unscaledVariance) - (t * t) - (2 * t) - 1) / ((t * t * t) + (3 * t * t) + (3 * t) + 1);
            double a = b * t;

            // Reality is swingier
            a = a / 4;
            b = b / 4;

            return BetaScaled.Sample(a, b, location, scale);
        }
        #endregion

        /* References
         * 1. https://www.aha.org/statistics/fast-facts-us-hospitals
         * 2. https://www.beckershospitalreview.com/lists/8-7-14-100-largest-hospitals-in-america.html
         * 3. anecdotal
         * 4. https://accessmedicine.mhmedical.com/content.aspx?bookid=1944&sectionid=143521546
         * 5. https://www.sccm.org/getattachment/Blog/March-2020/United-States-Resource-Availability-for-COVID-19/United-States-Resource-Availability-for-COVID-19.pdf?lang=en-US
         * 6. https://www.statista.com/statistics/185904/hospital-occupancy-rate-in-the-us-since-2001/
         * 7. https://www.ncbi.nlm.nih.gov/pmc/articles/PMC5520980/
         */
    }
}
