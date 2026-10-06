.class public abstract Lva/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:Lva/c;

.field protected b:Lra/j0;


# direct methods
.method public constructor <init>(Lva/c;Lra/j0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lva/a;->a:Lva/c;

    iput-object p2, p0, Lva/a;->b:Lra/j0;

    return-void
.end method


# virtual methods
.method protected a(JJ)V
    .locals 1

    iget-object v0, p0, Lva/a;->a:Lva/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lva/a;->b:Lra/j0;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lra/j0;->a()Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object v0

    iput-wide p1, v0, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->c:J

    iget-object p1, p0, Lva/a;->b:Lra/j0;

    invoke-virtual {p1}, Lra/j0;->a()Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object p1

    iput-wide p3, p1, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->d:J

    iget-object p1, p0, Lva/a;->a:Lva/c;

    iget-object p2, p0, Lva/a;->b:Lra/j0;

    invoke-interface {p1, p2}, Lva/c;->a(Lra/j0;)V

    :cond_0
    return-void
.end method

.method protected abstract b()V
.end method

.method public run()V
    .locals 0

    invoke-virtual {p0}, Lva/a;->b()V

    return-void
.end method
