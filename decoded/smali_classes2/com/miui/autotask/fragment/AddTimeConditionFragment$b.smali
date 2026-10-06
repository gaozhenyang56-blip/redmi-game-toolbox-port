.class Lcom/miui/autotask/fragment/AddTimeConditionFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/autotask/fragment/AddTimeConditionFragment;->onPreferenceClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/autotask/fragment/AddTimeConditionFragment;


# direct methods
.method constructor <init>(Lcom/miui/autotask/fragment/AddTimeConditionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment$b;->a:Lcom/miui/autotask/fragment/AddTimeConditionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lmiuix/pickerwidget/widget/TimePicker;II)V
    .locals 0

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment$b;->a:Lcom/miui/autotask/fragment/AddTimeConditionFragment;

    invoke-static {p1}, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->c0(Lcom/miui/autotask/fragment/AddTimeConditionFragment;)Lcom/miui/powercenter/autotask/AutoTask$c;

    move-result-object p1

    mul-int/lit8 p2, p2, 0x3c

    add-int/2addr p2, p3

    iput p2, p1, Lcom/miui/powercenter/autotask/AutoTask$c;->a:I

    iget-object p1, p0, Lcom/miui/autotask/fragment/AddTimeConditionFragment$b;->a:Lcom/miui/autotask/fragment/AddTimeConditionFragment;

    invoke-static {p1}, Lcom/miui/autotask/fragment/AddTimeConditionFragment;->d0(Lcom/miui/autotask/fragment/AddTimeConditionFragment;)V

    return-void
.end method
