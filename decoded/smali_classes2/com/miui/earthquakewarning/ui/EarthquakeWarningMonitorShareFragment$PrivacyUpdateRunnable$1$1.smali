.class Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$PrivacyUpdateRunnable$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/earthquakewarning/utils/Utils$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$PrivacyUpdateRunnable$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$PrivacyUpdateRunnable$1;


# direct methods
.method constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$PrivacyUpdateRunnable$1;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$PrivacyUpdateRunnable$1$1;->this$1:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$PrivacyUpdateRunnable$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic onAgreePrivacyChange()V
    .locals 0

    invoke-static {p0}, Lcom/miui/earthquakewarning/utils/h;->a(Lcom/miui/earthquakewarning/utils/Utils$Listener;)V

    return-void
.end method

.method public onRefusePrivacyChange()V
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$PrivacyUpdateRunnable$1$1;->this$1:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$PrivacyUpdateRunnable$1;

    iget-object v0, v0, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMonitorShareFragment$PrivacyUpdateRunnable$1;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
