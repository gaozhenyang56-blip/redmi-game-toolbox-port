.class Lcom/miui/securityscan/ui/main/MainVideoView$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/ui/main/MainVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "f"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/securityscan/ui/main/MainVideoView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/securityscan/ui/main/MainVideoView;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView$f;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/miui/securityscan/ui/main/MainVideoView$f;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/ui/main/MainVideoView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0}, Lcom/miui/securityscan/ui/main/MainVideoView;->access$200(Lcom/miui/securityscan/ui/main/MainVideoView;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/miui/securityscan/ui/main/MainVideoView;->access$100(Lcom/miui/securityscan/ui/main/MainVideoView;)Lcom/miui/securityscan/ui/main/MainVideoView$e;

    move-result-object v1

    sget-object v2, Lcom/miui/securityscan/ui/main/MainVideoView$e;->b:Lcom/miui/securityscan/ui/main/MainVideoView$e;

    if-eq v1, v2, :cond_1

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/MainVideoView;->updateBackground()V

    invoke-virtual {v0}, Lcom/miui/securityscan/ui/main/MainVideoView;->hideBgView()V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/miui/securityscan/ui/main/MainVideoView;->access$202(Lcom/miui/securityscan/ui/main/MainVideoView;Z)Z

    :cond_1
    return-void
.end method
