.class public final synthetic Lcom/miui/autotask/activity/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/autotask/activity/SuggestAlertDialogActivity;

.field public final synthetic b:Lcom/miui/autotask/bean/p;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/autotask/activity/SuggestAlertDialogActivity;Lcom/miui/autotask/bean/p;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/autotask/activity/t;->a:Lcom/miui/autotask/activity/SuggestAlertDialogActivity;

    iput-object p2, p0, Lcom/miui/autotask/activity/t;->b:Lcom/miui/autotask/bean/p;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    iget-object v0, p0, Lcom/miui/autotask/activity/t;->a:Lcom/miui/autotask/activity/SuggestAlertDialogActivity;

    iget-object v1, p0, Lcom/miui/autotask/activity/t;->b:Lcom/miui/autotask/bean/p;

    invoke-static {v0, v1, p1, p2}, Lcom/miui/autotask/activity/SuggestAlertDialogActivity;->e0(Lcom/miui/autotask/activity/SuggestAlertDialogActivity;Lcom/miui/autotask/bean/p;Landroid/content/DialogInterface;I)V

    return-void
.end method
