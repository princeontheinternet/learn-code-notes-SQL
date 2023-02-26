# **Rank Functions:**

> ## **ROW_NUMBER():**

- It assigns consecutive integers to all the rows within the partition.	

    **![](https://lh4.googleusercontent.com/cB4mN5V-hXF0WxA-5Ab2GJz8PS251nDTPylifp_tW9kBHbrpPTOly3crNZadcjrXT4O37xXFi_ffYsTfIEddKaunUxgXt8vRMeX81QMWNM1uLXI2tIqYm6P90dpigL1e-Ca46uvO67LOajCt1suc9Q)**

---

<br>

> ## **DESNE_RANK():**

- It assigns rank to each row within partition.
- Rows having the same value have the same rank.
  
    **![](https://lh4.googleusercontent.com/jHCZwSFwZbmAGHxDMLisjBEKYVLtUDk-qHykCM65kALk85HuEBVbs4vfqHkP6SVj9bJ1_s_jL7LmGXSKonUvM_78mq1BF0VB-k8jOwftmFuxr4t6LZsb_tfnBvRkVPuNPwbLYpEY6U6DbdNBD_3jog)**

---

<br>

> ## **RANK():**

- Assigns rank to all the rows within every partition. 
- Rank is assigned such that rank 1 given to the first row and rows having the same value are assigned the same rank. 
- For the next rank after two same rank values, one rank value will be skipped.

    **![](https://lh5.googleusercontent.com/W4LXGxf7ej4pdzEuEZVsYSrPr9t8Xsk4Vxejh61Zlz5RroMr5detgoYv4IYFJqtLNgqtFw5E8SZmvsuMwWIa38Er8VbFfxJ0EzUCujYs2WfVPWAGMKj1vcto1crlJiF3ODgVW4TOjTCAEGeAKgVZ4A)**

---

<br>
