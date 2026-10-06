.class public final synthetic Ltc/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field public final synthetic a:Lcom/miui/permcenter/settings/ShutDownPasswordFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/permcenter/settings/ShutDownPasswordFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltc/l;->a:Lcom/miui/permcenter/settings/ShutDownPasswordFragment;

    return-void
.end method


# virtual methods
.method public final onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Ltc/l;->a:Lcom/miui/permcenter/settings/ShutDownPasswordFragment;

    invoke-static {v0, p1}, Lcom/miui/permcenter/settings/ShutDownPasswordFragment;->b0(Lcom/miui/permcenter/settings/ShutDownPasswordFragment;Landroid/content/DialogInterface;)V

    return-void
.end method
