.class public Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;
.super Lcom/miui/securitycenter/memory/MemoryModel;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/scanner/ScoreManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResultModel"
.end annotation


# instance fields
.field private infoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private isChecked:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/miui/securitycenter/memory/MemoryModel;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->infoList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/miui/securitycenter/memory/MemoryModel;)V
    .locals 2

    invoke-direct {p0}, Lcom/miui/securitycenter/memory/MemoryModel;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->infoList:Ljava/util/List;

    invoke-virtual {p1}, Lcom/miui/securitycenter/memory/MemoryModel;->getAppName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securitycenter/memory/MemoryModel;->setAppName(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/miui/securitycenter/memory/MemoryModel;->getLockState()Landroid/util/SparseBooleanArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/securitycenter/memory/MemoryModel;->setLockState(Landroid/util/SparseBooleanArray;)V

    invoke-virtual {p1}, Lcom/miui/securitycenter/memory/MemoryModel;->getMemorySize()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/miui/securitycenter/memory/MemoryModel;->setMemorySize(J)V

    invoke-virtual {p1}, Lcom/miui/securitycenter/memory/MemoryModel;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/miui/securitycenter/memory/MemoryModel;->setPackageName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addInfo(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->infoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getInfoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->infoList:Ljava/util/List;

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->isChecked:Z

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/scanner/ScoreManager$ResultModel;->isChecked:Z

    return-void
.end method
