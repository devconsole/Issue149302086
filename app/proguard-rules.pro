# For comparing APK sizes we don't need to obfuscate
-dontobfuscate


# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
# --proguard-conditional-keep-rules does not work without this declaration!
# !!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
-keep class androidx.constraintlayout.widget.ConstraintLayout { *; }


# The following classes only seem to be kept because of proguard-android-optimize.txt
# keeps setters in Views so that animations can still work:
#
#     -keepclassmembers public class * extends android.view.View {
#         void set*(***);
#         *** get*();
#     }

-whyareyoukeeping class com.google.android.material.appbar.AppBarLayout
-whyareyoukeeping class com.google.android.material.appbar.MaterialToolbar
-whyareyoukeeping class com.google.android.material.button.MaterialButton
-whyareyoukeeping class com.google.android.material.card.MaterialCardView
-whyareyoukeeping class com.google.android.material.checkbox.MaterialCheckBox
-whyareyoukeeping class com.google.android.material.chip.Chip
-whyareyoukeeping class com.google.android.material.chip.ChipGroup
-whyareyoukeeping class com.google.android.material.circularreveal.cardview.CircularRevealCardView
-whyareyoukeeping class com.google.android.material.circularreveal.CircularRevealFrameLayout
-whyareyoukeeping class com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton
-whyareyoukeeping class com.google.android.material.floatingactionbutton.FloatingActionButton
-whyareyoukeeping class com.google.android.material.internal.BaselineLayout
-whyareyoukeeping class com.google.android.material.internal.CheckableImageButton
-whyareyoukeeping class com.google.android.material.internal.FlowLayout
-whyareyoukeeping class com.google.android.material.internal.ForegroundLinearLayout
-whyareyoukeeping class com.google.android.material.internal.NavigationMenuItemView
-whyareyoukeeping class com.google.android.material.internal.NavigationMenuView
-whyareyoukeeping class com.google.android.material.internal.VisibilityAwareImageButton
-whyareyoukeeping class com.google.android.material.radiobutton.MaterialRadioButton
-whyareyoukeeping class com.google.android.material.transformation.TransformationChildCard
-whyareyoukeeping class com.google.android.material.transformation.TransformationChildLayout
-whyareyoukeeping class com.google.android.material.textfield.TextInputEditText
-whyareyoukeeping class com.google.android.material.textfield.TextInputLayout
-whyareyoukeeping class com.google.android.material.textview.MaterialTextView
-whyareyoukeeping class com.google.android.material.theme.MaterialComponentsViewInflater


# Bahavior classes are kept by material-1.1.0/proguard.txt
#
#     -keep public class * extends androidx.coordinatorlayout.widget.CoordinatorLayout$Behavior {
#         public <init>(android.content.Context, android.util.AttributeSet);
#         public <init>();
#     }

-whyareyoukeeping class com.google.android.material.behavior.HideBottomViewOnScrollBehavior
-whyareyoukeeping class com.google.android.material.behavior.SwipeDismissBehavior
-whyareyoukeeping class com.google.android.material.bottomsheet.BottomSheetBehavior
-whyareyoukeeping class com.google.android.material.transformation.ExpandableBehavior
-whyareyoukeeping class com.google.android.material.transformation.ExpandableTransformationBehavior
-whyareyoukeeping class com.google.android.material.transformation.FabTransformationBehavior
-whyareyoukeeping class com.google.android.material.transformation.FabTransformationScrimBehavior
-whyareyoukeeping class com.google.android.material.transformation.FabTransformationSheetBehavior
