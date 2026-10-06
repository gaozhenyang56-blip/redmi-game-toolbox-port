.class public final synthetic Lgg/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/miui/simlock/activity/SimLockPinActivity;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/simlock/activity/SimLockPinActivity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgg/g;->a:Lcom/miui/simlock/activity/SimLockPinActivity;

    iput-object p2, p0, Lgg/g;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lgg/g;->a:Lcom/miui/simlock/activity/SimLockPinActivity;

    iget-object v1, p0, Lgg/g;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/miui/simlock/activity/SimLockPinActivity;->e0(Lcom/miui/simlock/activity/SimLockPinActivity;Landroid/view/View;)V

    return-void
.end method
