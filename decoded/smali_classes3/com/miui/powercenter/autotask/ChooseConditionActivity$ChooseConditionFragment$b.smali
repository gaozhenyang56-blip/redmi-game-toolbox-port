.class Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/appcompat/app/TimePickerDialog$OnTimeSetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->onPreferenceClick(Landroidx/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment$b;->a:Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTimeSet(Lmiuix/pickerwidget/widget/TimePicker;II)V
    .locals 0

    iget-object p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment$b;->a:Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;

    invoke-static {p1}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->e0(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;)Lcom/miui/powercenter/autotask/AutoTask$c;

    move-result-object p1

    mul-int/lit8 p2, p2, 0x3c

    add-int/2addr p2, p3

    iput p2, p1, Lcom/miui/powercenter/autotask/AutoTask$c;->a:I

    iget-object p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment$b;->a:Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;

    invoke-static {p1}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->f0(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;)V

    return-void
.end method
