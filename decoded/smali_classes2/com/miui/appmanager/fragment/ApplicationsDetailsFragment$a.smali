.class Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/function/IntConsumer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public accept(I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {v0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->C1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;I)I

    const/4 p1, 0x1

    invoke-static {v0, p1}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->D1(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;Z)Z

    invoke-static {v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;->w0(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$u;

    move-result-object p1

    new-instance v1, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a$a;

    invoke-direct {v1, p0, v0}, Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a$a;-><init>(Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment$a;Lcom/miui/appmanager/fragment/ApplicationsDetailsFragment;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
