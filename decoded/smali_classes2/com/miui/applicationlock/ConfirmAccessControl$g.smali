.class Lcom/miui/applicationlock/ConfirmAccessControl$g;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/applicationlock/ConfirmAccessControl;->U1()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/ConfirmAccessControl;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ConfirmAccessControl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$g;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/miui/applicationlock/ConfirmAccessControl$g;->a:Lcom/miui/applicationlock/ConfirmAccessControl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-wide/16 v0, 0x0

    invoke-static {v0, v1, p1}, Lc3/f;->m0(JLandroid/content/Context;)V

    return-void
.end method
