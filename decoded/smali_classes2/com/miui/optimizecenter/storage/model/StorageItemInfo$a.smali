.class public Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizecenter/storage/model/StorageItemInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Lcom/miui/optimizecenter/storage/model/StorageItemInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    invoke-direct {v0}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;-><init>()V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->a:Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    return-void
.end method


# virtual methods
.method public a()Lcom/miui/optimizecenter/storage/model/StorageItemInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->a:Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    return-object v0
.end method

.method public b(Ljava/lang/String;)Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->a:Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    iput-object p1, v0, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->f:Ljava/lang/String;

    return-object p0
.end method

.method public c(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->a:Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    iput p1, v0, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->e:I

    return-object p0
.end method

.method public d(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->a:Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    invoke-static {v0, p1}, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->a(Lcom/miui/optimizecenter/storage/model/StorageItemInfo;I)I

    return-object p0
.end method

.method public e(I)Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/model/StorageItemInfo$a;->a:Lcom/miui/optimizecenter/storage/model/StorageItemInfo;

    iput p1, v0, Lcom/miui/optimizecenter/storage/model/StorageItemInfo;->a:I

    return-object p0
.end method
