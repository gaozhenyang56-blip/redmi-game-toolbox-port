.class public Lcom/miui/optimizecenter/storage/model/PublicFileModel;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private fileName:Ljava/lang/String;

.field private filePath:Ljava/lang/String;

.field private fileSize:J

.field private from:Ljava/lang/String;

.field private isChecked:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->fileName:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->filePath:Ljava/lang/String;

    iput-wide p3, p0, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->fileSize:J

    iput-object p5, p0, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->from:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public changeChecked()V
    .locals 1

    iget-boolean v0, p0, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->isChecked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->isChecked:Z

    return-void
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->fileName:Ljava/lang/String;

    return-object v0
.end method

.method public getFilePath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->fileSize:J

    return-wide v0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->from:Ljava/lang/String;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/optimizecenter/storage/model/PublicFileModel;->isChecked:Z

    return-void
.end method
