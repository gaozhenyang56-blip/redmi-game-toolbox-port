.class public final synthetic Lde/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lde/f;->a:Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lde/f;->a:Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;

    invoke-static {v0, p1}, Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;->i0(Lcom/miui/powercenter/powerui/ChargingHotWarningActivity;Landroid/content/DialogInterface;)V

    return-void
.end method
