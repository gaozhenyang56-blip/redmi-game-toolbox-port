.class public Lcom/miui/earthquakewarning/model/WhiteListResult$DataBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/earthquakewarning/model/WhiteListResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataBean"
.end annotation


# instance fields
.field private checkResult:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isCheckResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/earthquakewarning/model/WhiteListResult$DataBean;->checkResult:Z

    return v0
.end method

.method public setCheckResult(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/earthquakewarning/model/WhiteListResult$DataBean;->checkResult:Z

    return-void
.end method
