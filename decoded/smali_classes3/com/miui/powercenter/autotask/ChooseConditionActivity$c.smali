.class Lcom/miui/powercenter/autotask/ChooseConditionActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmiuix/pickerwidget/widget/NumberPicker$h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/autotask/ChooseConditionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;Lcom/miui/powercenter/autotask/ChooseConditionActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$c;-><init>(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;)V

    return-void
.end method


# virtual methods
.method public a(Lmiuix/pickerwidget/widget/NumberPicker;II)V
    .locals 0

    iget-object p1, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->h0(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;)Lmiuix/preference/RadioButtonPreference;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-static {p1, p3}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->i0(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;I)I

    invoke-static {p1}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->j0(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;)V

    :cond_1
    return-void
.end method
