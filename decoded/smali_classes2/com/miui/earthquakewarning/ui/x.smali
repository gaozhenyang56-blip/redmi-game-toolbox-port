.class public final synthetic Lcom/miui/earthquakewarning/ui/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lbk/y;


# direct methods
.method public synthetic constructor <init>(Lbk/y;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/x;->a:Lbk/y;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/x;->a:Lbk/y;

    invoke-static {v0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningInfoActivity$Companion$EarthquakeWarningInfoFragment;->h0(Lbk/y;Landroid/content/DialogInterface;)V

    return-void
.end method
