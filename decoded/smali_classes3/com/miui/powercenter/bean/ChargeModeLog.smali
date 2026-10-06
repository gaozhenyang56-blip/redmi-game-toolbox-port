.class public Lcom/miui/powercenter/bean/ChargeModeLog;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private mode:Ljava/lang/String;

.field private time:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/bean/ChargeModeLog;->time:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/powercenter/bean/ChargeModeLog;->mode:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getMode()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bean/ChargeModeLog;->mode:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/powercenter/bean/ChargeModeLog;->time:Ljava/lang/String;

    return-object v0
.end method

.method public setMode(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/bean/ChargeModeLog;->mode:Ljava/lang/String;

    return-void
.end method

.method public setTime(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/bean/ChargeModeLog;->time:Ljava/lang/String;

    return-void
.end method
