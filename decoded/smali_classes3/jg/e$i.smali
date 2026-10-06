.class Ljg/e$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/e;->T(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljg/e;


# direct methods
.method constructor <init>(Ljg/e;)V
    .locals 0

    iput-object p1, p0, Ljg/e$i;->a:Ljg/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ljg/e$i;->a:Ljg/e;

    invoke-static {v0}, Ljg/e;->u(Ljg/e;)Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lpg/i;->L(Landroid/content/Context;I)V

    return-void
.end method
