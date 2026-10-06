.class Lcom/miui/optimizecenter/storage/a$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lva/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizecenter/storage/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizecenter/storage/a;


# direct methods
.method private constructor <init>(Lcom/miui/optimizecenter/storage/a;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/a$f;->a:Lcom/miui/optimizecenter/storage/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/optimizecenter/storage/a;Lcom/miui/optimizecenter/storage/a$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/a$f;-><init>(Lcom/miui/optimizecenter/storage/a;)V

    return-void
.end method


# virtual methods
.method public a(Lra/j0;)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTypeScanFinished: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\tsize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lra/j0;->a()Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "\t workSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lra/j0;->a()Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object v1

    iget-wide v1, v1, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StorageDataManager"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/miui/optimizecenter/storage/a$f;->a:Lcom/miui/optimizecenter/storage/a;

    invoke-virtual {p1}, Lra/j0;->a()Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object v0

    iget-wide v4, v0, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->c:J

    invoke-virtual {p1}, Lra/j0;->a()Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    move-result-object v0

    iget-wide v6, v0, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->d:J

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/miui/optimizecenter/storage/a;->a0(Lra/j0;JJ)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/a$f;->a:Lcom/miui/optimizecenter/storage/a;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/a;->m(Lcom/miui/optimizecenter/storage/a;)Lcom/miui/optimizecenter/storage/a$e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/miui/optimizecenter/storage/a;->W(Lxa/b$e;)V

    return-void
.end method
