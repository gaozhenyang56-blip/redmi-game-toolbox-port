.class abstract Lcom/miui/powercenter/autotask/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected a:Lcom/miui/powercenter/autotask/AutoTask;

.field protected b:Lcom/miui/powercenter/autotask/AutoTask;

.field protected c:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/autotask/AutoTask;Lcom/miui/powercenter/autotask/AutoTask;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/autotask/i;->a:Lcom/miui/powercenter/autotask/AutoTask;

    iput-object p2, p0, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    return-void
.end method

.method public abstract b(Landroid/os/Bundle;)V
.end method

.method public abstract c(Landroid/os/Bundle;)V
.end method

.method public abstract d(IILandroid/content/Intent;)V
.end method
