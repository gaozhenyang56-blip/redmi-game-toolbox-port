.class Lcom/miui/earthquakewarning/utils/LocationUtils$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/utils/LocationUtils$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/earthquakewarning/utils/LocationUtils$1;

.field final synthetic val$locationListener:Landroid/location/LocationListener;

.field final synthetic val$locationManager:Landroid/location/LocationManager;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/utils/LocationUtils$1;Landroid/location/LocationManager;Landroid/location/LocationListener;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$1$2;->this$0:Lcom/miui/earthquakewarning/utils/LocationUtils$1;

    iput-object p2, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$1$2;->val$locationManager:Landroid/location/LocationManager;

    iput-object p3, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$1$2;->val$locationListener:Landroid/location/LocationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/miui/earthquakewarning/utils/LocationUtils;->access$000()V

    const-string v0, "LocationUtils"

    const-string v1, "requestLocationOnce reach time limit"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$1$2;->val$locationManager:Landroid/location/LocationManager;

    iget-object v1, p0, Lcom/miui/earthquakewarning/utils/LocationUtils$1$2;->val$locationListener:Landroid/location/LocationListener;

    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    return-void
.end method
