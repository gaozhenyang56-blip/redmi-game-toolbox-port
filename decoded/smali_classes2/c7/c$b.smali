.class Lc7/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lc7/c;->c(Landroid/view/View;Ljava/lang/Runnable;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Landroid/view/View;

.field final synthetic c:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(ZLandroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    iput-boolean p1, p0, Lc7/c$b;->a:Z

    iput-object p2, p0, Lc7/c$b;->b:Landroid/view/View;

    iput-object p3, p0, Lc7/c$b;->c:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 1

    iget-boolean v0, p0, Lc7/c$b;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lc7/c$b;->b:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_0
    iget-object v0, p0, Lc7/c$b;->c:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x0

    return v0
.end method
