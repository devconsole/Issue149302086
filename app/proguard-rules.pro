-printseeds build/seeds.txt

# proguard-android-optimize.txt keeps setters in Views so that animations can still work
-whyareyoukeeping class com.google.android.material.chip.Chip

# --proguard-conditional-keep-rules does not work without this declaration!
-keep class androidx.constraintlayout.widget.ConstraintLayout { *; }
