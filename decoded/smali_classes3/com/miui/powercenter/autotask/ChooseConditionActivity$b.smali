.class Lcom/miui/powercenter/autotask/ChooseConditionActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/autotask/ChooseConditionActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
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

    iput-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;Lcom/miui/powercenter/autotask/ChooseConditionActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$b;-><init>(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/miui/powercenter/autotask/ChooseConditionActivity;

    iget-object v2, v1, Lcom/miui/powercenter/autotask/BaseSettingActivity;->b:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_1

    invoke-static {v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->c0(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;)V

    goto :goto_0

    :cond_1
    iget-object v2, v1, Lcom/miui/powercenter/autotask/BaseSettingActivity;->a:Landroid/widget/ImageView;

    if-ne p1, v2, :cond_3

    invoke-static {v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->d0(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;)Z

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x7f121531

    invoke-static {v1, p1}, Lx4/y1;->j(Landroid/content/Context;I)V

    return-void

    :cond_2
    invoke-static {v0}, Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;->g0(Lcom/miui/powercenter/autotask/ChooseConditionActivity$ChooseConditionFragment;)V

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method
