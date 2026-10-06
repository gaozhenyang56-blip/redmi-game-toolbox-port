.class public final synthetic Lk3/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lcom/miui/apppredict/activity/GuideDialogActivity;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/apppredict/activity/GuideDialogActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lk3/d0;->a:Lcom/miui/apppredict/activity/GuideDialogActivity;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    iget-object v0, p0, Lk3/d0;->a:Lcom/miui/apppredict/activity/GuideDialogActivity;

    invoke-static {v0, p1}, Lcom/miui/apppredict/activity/GuideDialogActivity;->b(Lcom/miui/apppredict/activity/GuideDialogActivity;Landroid/content/DialogInterface;)V

    return-void
.end method
