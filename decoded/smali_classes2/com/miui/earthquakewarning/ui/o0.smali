.class public final synthetic Lcom/miui/earthquakewarning/ui/o0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/earthquakewarning/service/RequestAreaCodeTask$Listener;


# instance fields
.field public final synthetic a:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/o0;->a:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;

    return-void
.end method


# virtual methods
.method public final onPost(Lcom/miui/earthquakewarning/model/AreaCodeResult;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/o0;->a:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;

    invoke-static {v0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$getLocation$1;->e(Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Lcom/miui/earthquakewarning/model/AreaCodeResult;)V

    return-void
.end method
