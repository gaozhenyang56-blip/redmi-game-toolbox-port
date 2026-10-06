.class public final synthetic Ltc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltc/c;->a:Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Ltc/c;->a:Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;

    invoke-static {v0, p1}, Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;->b0(Lcom/miui/permcenter/settings/InvisibleModeActivity$InvisibleModeFragment;Landroid/content/DialogInterface;)V

    return-void
.end method
