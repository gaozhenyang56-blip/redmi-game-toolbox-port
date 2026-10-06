.class public final synthetic La4/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/autotask/taskitem/LockScreenResultItem;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/autotask/taskitem/LockScreenResultItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/b1;->a:Lcom/miui/autotask/taskitem/LockScreenResultItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, La4/b1;->a:Lcom/miui/autotask/taskitem/LockScreenResultItem;

    invoke-static {v0, p1, p2}, La4/e2;->i(Lcom/miui/autotask/taskitem/LockScreenResultItem;Landroid/content/DialogInterface;I)V

    return-void
.end method
