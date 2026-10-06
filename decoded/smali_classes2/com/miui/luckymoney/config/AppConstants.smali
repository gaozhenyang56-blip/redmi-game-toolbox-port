.class public Lcom/miui/luckymoney/config/AppConstants;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/luckymoney/config/AppConstants$Package;
    }
.end annotation


# static fields
.field public static final FastOpenRestricts:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v0, "com.baidu.BaiduMap"

    const-string v1, "com.autonavi.minimap"

    const-string v2, "com.tigerknows"

    const-string v3, "com.mapbar.android.mapbarmap"

    const-string v4, "com.sogou.map.android.maps"

    const-string v5, "com.tencent.map"

    const-string v6, "com.environmentpollution.activity"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/luckymoney/config/AppConstants;->FastOpenRestricts:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
