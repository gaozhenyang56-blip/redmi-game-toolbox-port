.class Ly5/i$f;
.super Lmiuix/animation/listener/TransitionListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ly5/i;->r(Landroid/view/View;Landroid/view/View;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Ly5/i;


# direct methods
.method constructor <init>(Ly5/i;ZLandroid/view/View;)V
    .locals 0

    iput-object p1, p0, Ly5/i$f;->c:Ly5/i;

    iput-boolean p2, p0, Ly5/i$f;->a:Z

    iput-object p3, p0, Ly5/i$f;->b:Landroid/view/View;

    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 1

    iget-boolean p1, p0, Ly5/i$f;->a:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Ly5/i$f;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 1

    iget-boolean p1, p0, Ly5/i$f;->a:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Ly5/i$f;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void
.end method
