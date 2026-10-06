.class Lcom/miui/gamebooster/ui/SelectGameLandActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/SelectGameLandActivity;->k0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/SelectGameLandActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/SelectGameLandActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity$b;->a:Lcom/miui/gamebooster/ui/SelectGameLandActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity$b;->a:Lcom/miui/gamebooster/ui/SelectGameLandActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-static {v0}, Lx4/d1;->b(Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onGlobalLayout: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SelectGameLandActivity"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity$b;->a:Lcom/miui/gamebooster/ui/SelectGameLandActivity;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, La8/k2;->f(Landroid/content/Context;)I

    move-result v1

    const/16 v2, 0x5a

    if-eq v1, v2, :cond_1

    const/16 v2, 0x10e

    if-ne v1, v2, :cond_2

    :cond_1
    iget v0, v0, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/miui/gamebooster/ui/SelectGameLandActivity$b;->a:Lcom/miui/gamebooster/ui/SelectGameLandActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lx4/d1;->f(Landroid/app/Activity;I)V

    :cond_2
    return-void
.end method
