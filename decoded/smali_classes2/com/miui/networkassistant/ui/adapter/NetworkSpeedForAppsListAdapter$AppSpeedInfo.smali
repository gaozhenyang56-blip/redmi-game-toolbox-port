.class public final Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppSpeedInfo"
.end annotation


# instance fields
.field appInfo:Lcom/miui/networkassistant/model/AppInfo;

.field speedRx:J

.field speedTx:J

.field total:J


# direct methods
.method public constructor <init>(Lcom/miui/networkassistant/model/AppInfo;JJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->appInfo:Lcom/miui/networkassistant/model/AppInfo;

    iput-wide p2, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->speedRx:J

    iput-wide p4, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->speedTx:J

    const-wide/16 v0, 0x0

    add-long/2addr v0, p2

    add-long/2addr v0, p4

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->total:J

    return-void
.end method


# virtual methods
.method add(JJ)V
    .locals 2

    iget-wide v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->speedRx:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->speedRx:J

    iget-wide v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->speedTx:J

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->speedTx:J

    iget-wide v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->total:J

    add-long/2addr v0, p1

    add-long/2addr v0, p3

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->total:J

    return-void
.end method

.method public getAppInfo()Lcom/miui/networkassistant/model/AppInfo;
    .locals 1

    iget-object v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->appInfo:Lcom/miui/networkassistant/model/AppInfo;

    return-object v0
.end method

.method reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->speedRx:J

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$AppSpeedInfo;->speedTx:J

    return-void
.end method
