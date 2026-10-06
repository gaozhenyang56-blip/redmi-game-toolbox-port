.class public final synthetic La4/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/miui/autotask/taskitem/MuteResultItem;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/autotask/taskitem/MuteResultItem;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La4/d0;->a:Lcom/miui/autotask/taskitem/MuteResultItem;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, La4/d0;->a:Lcom/miui/autotask/taskitem/MuteResultItem;

    invoke-static {v0, p1, p2}, La4/e2;->a(Lcom/miui/autotask/taskitem/MuteResultItem;Landroid/content/DialogInterface;I)V

    return-void
.end method
