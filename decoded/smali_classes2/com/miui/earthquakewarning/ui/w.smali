.class public final synthetic Lcom/miui/earthquakewarning/ui/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Landroidx/fragment/app/FragmentActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/w;->a:Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;

    iput-object p2, p0, Lcom/miui/earthquakewarning/ui/w;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/earthquakewarning/ui/w;->c:Landroidx/fragment/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/w;->a:Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/w;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/miui/earthquakewarning/ui/w;->c:Landroidx/fragment/app/FragmentActivity;

    invoke-static {v0, v1, v2, p1, p2}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->i0(Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;Ljava/lang/String;Landroidx/fragment/app/FragmentActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method
