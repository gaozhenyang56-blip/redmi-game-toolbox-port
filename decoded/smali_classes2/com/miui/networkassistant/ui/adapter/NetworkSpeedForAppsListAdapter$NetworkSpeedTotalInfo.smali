.class public Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NetworkSpeedTotalInfo"
.end annotation


# instance fields
.field public rxTotal:J

.field public total:J

.field public txTotal:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;->total:J

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;->rxTotal:J

    iput-wide v0, p0, Lcom/miui/networkassistant/ui/adapter/NetworkSpeedForAppsListAdapter$NetworkSpeedTotalInfo;->txTotal:J

    return-void
.end method
