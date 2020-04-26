<?xml version="1.0" encoding="UTF-8"?>
The sections below describe the use cases supported by the
Audacious Inquiry SANER Implementation Guide.


### Use Case 1: Collecting Bed Measures

This use case addresses the exchange of data from Facilities to a Centralized
reporting system for Public Health


This use case is supported by the following

* Actors

  - [Measure Source](actors_and_transactions.html#measure-source)

  - [Measure Consumer](actors_and_transactions.html#measure-consumer)

* Transactions

  - [Query Measure](transaction-1.html)

  - [Produce Measure](transaction-2.html)

* Content

  - TBD

#### Use Case 1: Collecting Bed Measures Process Flow

Overview TBD


![Figure 2.3.1.1-1: Use Case 1: Collecting Bed Measures Process Flow](usecase1-processflow.svg "Figure 2.3.1.1-1: Use Case 1: Collecting Bed Measures Process Flow")

**Figure 2.3.1.1-1: Use Case 1: Collecting Bed Measures Process Flow**


1. <span xmlns:ig="http://ainq.com/ig-definition" xmlns="http://ainq.com/ig-definition" xmlns:html="http://www.w3.org/1999/xhtml" id="BED-STEP1">Measure Repository Initiates Search</span>

   The Measure Repository identifies features associated with a group of
bed or device resources that it wishes to collect data about.  For example, the Measure Repository can
request information about ICU, med/surg, or ED beds available or in use.


   TBD


1. <span xmlns:ig="http://ainq.com/ig-definition" xmlns="http://ainq.com/ig-definition" xmlns:html="http://www.w3.org/1999/xhtml" id="BED-STEP2">Measure Source Reports Aggregate Data</span>

   The Measure Source reports aggregate data about a group of beds or devices based
	                on specified bed or device characteristics


   TBD


### Use Case 2: Reporting on A Measure

TBD


This use case is supported by the following

* Actors

  - [Measure Consumer](actors_and_transactions.html#measure-consumer)

* Transactions

  - [Communicate Results](transaction-1.html)

* Content

  - TBD

#### Use Case 2: Reporting on A Measure Process Flow

TBD


![Figure 2.3.1.2-1: Use Case 2: Reporting on A Measure Process Flow](usecase2-processflow.svg "Figure 2.3.1.2-1: Use Case 2: Reporting on A Measure Process Flow")

**Figure 2.3.1.2-1: Use Case 2: Reporting on A Measure Process Flow**


1. <span xmlns:ig="http://ainq.com/ig-definition" xmlns="http://ainq.com/ig-definition" xmlns:html="http://www.w3.org/1999/xhtml" id="Reporting-STEP1">User Initiates Search</span>

   The Public Health User navigates to a web page where collected data is reported.


   TBD


1. <span xmlns:ig="http://ainq.com/ig-definition" xmlns="http://ainq.com/ig-definition" xmlns:html="http://www.w3.org/1999/xhtml" id="Aggregating-STEP2">Measure Consumer gathers data from one or Measure Sources</span>

   The Measure Consumer gathers and aggregates data from one or more Measure Sources.


   The specific ordering in which gathering and aggregation is performed is not further specified
by this implementation guide. It is shown as occuring after the user initiates the query here, but could have occured
prior.


1. <span xmlns:ig="http://ainq.com/ig-definition" xmlns="http://ainq.com/ig-definition" xmlns:html="http://www.w3.org/1999/xhtml" id="">Display Results</span>

   The Measure Consumer displays an overview of aggregated regional results to the
user, and additional links which enable navigation to finer grained or alternative displays.


   Data can be displayed as aggregated or fine-grained status information based
on the current focus of the public health user.  It may be shown as a map, a table, or a graph.


1. <span xmlns:ig="http://ainq.com/ig-definition" xmlns="http://ainq.com/ig-definition" xmlns:html="http://www.w3.org/1999/xhtml" id="Reporting-STEP2">User refines Focus or Form of Display</span>

   The Public Health User selects a new form of display (e.g., Map, table or graph) or refines their
focus (e.g., wider or smaller region).


   TBD


1. <span xmlns:ig="http://ainq.com/ig-definition" xmlns="http://ainq.com/ig-definition" xmlns:html="http://www.w3.org/1999/xhtml" id="">Display Refined Results</span>

   The Measure Repository modifies the users focus and reporting format


   TBD

