.class Lcom/miui/antivirus/activity/MainActivity$l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antivirus/activity/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "l0"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/antivirus/activity/MainActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/activity/MainActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$l0;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/antivirus/activity/MainActivity$l0;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/antivirus/activity/MainActivity;

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->m0(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->n0(Lcom/miui/antivirus/activity/MainActivity;)V

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->o0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/MainActivity$e0;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v0}, Lcom/miui/antivirus/activity/MainActivity;->o0(Lcom/miui/antivirus/activity/MainActivity;)Lcom/miui/antivirus/activity/MainActivity$e0;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :cond_0
    return-void
.end method
