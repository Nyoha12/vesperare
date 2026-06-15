# 00_METHOD_OVERVIEW

## Purpose

This folder contains the AI operating method used in this repository.

The method is based on a synthesis of several ideas:

- stop treating AI as a chatbot;
- create a spec before execution;
- create a verifier before building;
- build an environment around the model;
- use subagents for parallel perspectives;
- transform repeated workflows into skills;
- maintain a knowledge base / common layer;
- keep the human responsible for understanding and final judgment;
- automate cautiously.

## The method in one sentence

Do not ask the AI to "do the task."  
Build the conditions in which the AI can understand the task, act within constraints, verify its work, and improve the system for the next session.

## Core loop

Interview  
→ Spec  
→ Verifier  
→ Environment  
→ Execute in small phases  
→ Review  
→ Capture as skill  
→ Improve system

## What this method prevents

- vague prompting;
- hidden assumptions;
- overconfident hallucination;
- waterfall execution;
- premature automation;
- repeated corrections;
- restarting from zero every session;
- replacing human judgment with model output.

## What this method enables

- clearer thinking;
- better project memory;
- reusable workflows;
- more reliable outputs;
- explicit verification;
- better use of domain judgment;
- compounding improvements over time.

## Key distinction

A prompt is temporary.

A method is durable.

A skill is reusable.

A verifier is a quality gate.

A knowledge base is memory.

A script is deterministic leverage.

A human keeps understanding.
