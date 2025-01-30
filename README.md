# ActionScript TimerEvent Scope Issue

This repository demonstrates an uncommon scoping issue in ActionScript related to using Timer objects and nested functions.  The issue occurs when a nested function attempts to access variables from its enclosing function's scope after the enclosing function's execution has completed (specifically, in the context of a Timer event handler). 

## Problem
The provided `bug.as` file showcases the issue where `event.type` is undefined within the nested function.  This occurs because the `timerHandler` function completes execution before the nested function `nestedFunc` is called.  The event object's scope is lost in this scenario.

## Solution
The `bugSolution.as` file presents a solution by explicitly passing the `event` object to the nested function as an argument.  This ensures the nested function maintains access to the required data, regardless of the timing of its execution.
