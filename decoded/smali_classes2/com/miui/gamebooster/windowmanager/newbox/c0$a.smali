.class Lcom/miui/gamebooster/windowmanager/newbox/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/gamebooster/windowmanager/newbox/c0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/windowmanager/newbox/c0;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/windowmanager/newbox/c0;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0$a;->a:Lcom/miui/gamebooster/windowmanager/newbox/c0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, La8/o0;->h()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    iget-object v3, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0$a;->a:Lcom/miui/gamebooster/windowmanager/newbox/c0;

    invoke-static {v3}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->b(Lcom/miui/gamebooster/windowmanager/newbox/c0;)Lcom/miui/gamebooster/windowmanager/newbox/a0;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v1, 0x1

    iget-object v3, p0, Lcom/miui/gamebooster/windowmanager/newbox/c0$a;->a:Lcom/miui/gamebooster/windowmanager/newbox/c0;

    invoke-static {v3}, Lcom/miui/gamebooster/windowmanager/newbox/c0;->c(Lcom/miui/gamebooster/windowmanager/newbox/c0;)Landroid/widget/Space;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Ldb/i;->m(I[Landroid/view/View;)V

    return-void
.end method
