.class Lcom/miui/applicationlock/widget/q$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/widget/q;->u()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/widget/q;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/widget/q;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/widget/q$c;->a:Lcom/miui/applicationlock/widget/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/applicationlock/widget/q$c;->a:Lcom/miui/applicationlock/widget/q;

    invoke-static {p1}, Lcom/miui/applicationlock/widget/q;->p(Lcom/miui/applicationlock/widget/q;)V

    iget-object p1, p0, Lcom/miui/applicationlock/widget/q$c;->a:Lcom/miui/applicationlock/widget/q;

    invoke-static {p1}, Lcom/miui/applicationlock/widget/q;->q(Lcom/miui/applicationlock/widget/q;)Lcom/miui/applicationlock/widget/MiuiNumericInputView;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/miui/applicationlock/widget/MiuiNumericInputView;->setEnabled(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
