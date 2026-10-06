.class public Lcom/miui/securityscan/ui/main/HpViewFlipper;
.super Landroid/widget/ViewFlipper;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/ui/main/HpViewFlipper$a;
    }
.end annotation


# instance fields
.field private a:Lcom/miui/securityscan/ui/main/HpViewFlipper$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ViewFlipper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public setmViewChangeListener(Lcom/miui/securityscan/ui/main/HpViewFlipper$a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/ui/main/HpViewFlipper;->a:Lcom/miui/securityscan/ui/main/HpViewFlipper$a;

    return-void
.end method

.method public showNext()V
    .locals 2

    invoke-super {p0}, Landroid/widget/ViewFlipper;->showNext()V

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/HpViewFlipper;->a:Lcom/miui/securityscan/ui/main/HpViewFlipper$a;

    invoke-virtual {p0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/miui/securityscan/ui/main/HpViewFlipper$a;->currentView(I)V

    return-void
.end method
