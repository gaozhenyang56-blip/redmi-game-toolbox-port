.class Lmiuix/preference/StretchablePickerPreference$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/preference/StretchablePickerPreference;->s(Lmiuix/slidingwidget/widget/SlidingButton;Lmiuix/pickerwidget/widget/DateTimePicker;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/pickerwidget/widget/DateTimePicker;

.field final synthetic b:Lmiuix/preference/StretchablePickerPreference;


# direct methods
.method constructor <init>(Lmiuix/preference/StretchablePickerPreference;Lmiuix/pickerwidget/widget/DateTimePicker;)V
    .locals 0

    iput-object p1, p0, Lmiuix/preference/StretchablePickerPreference$b;->b:Lmiuix/preference/StretchablePickerPreference;

    iput-object p2, p0, Lmiuix/preference/StretchablePickerPreference$b;->a:Lmiuix/pickerwidget/widget/DateTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    iget-object p1, p0, Lmiuix/preference/StretchablePickerPreference$b;->b:Lmiuix/preference/StretchablePickerPreference;

    iget-object v0, p0, Lmiuix/preference/StretchablePickerPreference$b;->a:Lmiuix/pickerwidget/widget/DateTimePicker;

    invoke-static {p1, v0, p2}, Lmiuix/preference/StretchablePickerPreference;->r(Lmiuix/preference/StretchablePickerPreference;Lmiuix/pickerwidget/widget/DateTimePicker;Z)V

    return-void
.end method
