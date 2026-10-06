.class Lcom/miui/gamebooster/customview/y$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/customview/y;->J(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/customview/y;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/customview/y;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/customview/y$c;->a:Lcom/miui/gamebooster/customview/y;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y$c;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/y;->D(Lcom/miui/gamebooster/customview/y;)Lcom/miui/gamebooster/voicechanger/SettingsView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y$c;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/y;->E(Lcom/miui/gamebooster/customview/y;)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/miui/gamebooster/customview/y$c;->a:Lcom/miui/gamebooster/customview/y;

    invoke-static {p1}, Lcom/miui/gamebooster/customview/y;->F(Lcom/miui/gamebooster/customview/y;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

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
