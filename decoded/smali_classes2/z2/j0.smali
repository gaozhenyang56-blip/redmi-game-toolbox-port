.class public final synthetic Lz2/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/miui/applicationlock/SettingLockFragment;

.field public final synthetic b:Lc3/u;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/applicationlock/SettingLockFragment;Lc3/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lz2/j0;->a:Lcom/miui/applicationlock/SettingLockFragment;

    iput-object p2, p0, Lz2/j0;->b:Lc3/u;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lz2/j0;->a:Lcom/miui/applicationlock/SettingLockFragment;

    iget-object v1, p0, Lz2/j0;->b:Lc3/u;

    invoke-static {v0, v1, p1}, Lcom/miui/applicationlock/SettingLockFragment;->d0(Lcom/miui/applicationlock/SettingLockFragment;Lc3/u;Landroid/content/DialogInterface;)V

    return-void
.end method
