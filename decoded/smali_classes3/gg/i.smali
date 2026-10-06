.class public final synthetic Lgg/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/simlock/activity/SimLockPinActivity;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/simlock/activity/SimLockPinActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgg/i;->a:Lcom/miui/simlock/activity/SimLockPinActivity;

    iput-object p2, p0, Lgg/i;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lgg/i;->a:Lcom/miui/simlock/activity/SimLockPinActivity;

    iget-object v1, p0, Lgg/i;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1, p2}, Lcom/miui/simlock/activity/SimLockPinActivity;->f0(Lcom/miui/simlock/activity/SimLockPinActivity;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method
