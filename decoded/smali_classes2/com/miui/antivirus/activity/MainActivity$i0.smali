.class Lcom/miui/antivirus/activity/MainActivity$i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "i0"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antivirus/activity/MainActivity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lo2/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/activity/MainActivity;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/miui/antivirus/activity/MainActivity;",
            "Ljava/util/List<",
            "Lo2/b$b;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$i0;->b:Landroid/content/Context;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$i0;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lcom/miui/antivirus/activity/MainActivity$i0;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    const/4 p1, 0x0

    invoke-static {p1}, Lo2/h;->D(Z)V

    const/4 p2, 0x1

    invoke-static {p2}, Lo2/h;->V(Z)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$i0;->b:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lo2/c;->k(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$i0;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lo2/b$b;

    iget-object v2, p0, Lcom/miui/antivirus/activity/MainActivity$i0;->b:Landroid/content/Context;

    const v3, 0x7f1213f4

    new-array v4, p2, [Ljava/lang/Object;

    iget-object v5, v1, Lo2/b$b;->a:Ljava/lang/String;

    aput-object v5, v4, p1

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-boolean v1, v1, Lo2/b$b;->d:Z

    if-eqz v1, :cond_0

    invoke-static {v2, p2}, Lo2/h;->A(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_0
    invoke-static {v2, p1}, Lo2/h;->A(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$i0;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, p2}, Lw2/t;->N(Landroid/content/ContentResolver;Z)V

    iget-object p1, p0, Lcom/miui/antivirus/activity/MainActivity$i0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_2

    check-cast p1, Lcom/miui/antivirus/activity/MainActivity;

    invoke-static {p1}, Lcom/miui/antivirus/activity/MainActivity;->g0(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-static {p1, p2}, Lcom/miui/antivirus/activity/MainActivity;->i0(Lcom/miui/antivirus/activity/MainActivity;Z)Z

    :cond_2
    const-string p1, "module_click"

    const-string p2, "agree"

    invoke-static {p1, p2}, Lq2/b$a;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
