.class Lcom/miui/powercenter/autotask/m$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/preference/Preference$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/autotask/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/powercenter/autotask/m;


# direct methods
.method constructor <init>(Lcom/miui/powercenter/autotask/m;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/powercenter/autotask/m$b;->a:Lcom/miui/powercenter/autotask/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/powercenter/autotask/m$b;->a:Lcom/miui/powercenter/autotask/m;

    iget-object v0, v0, Lcom/miui/powercenter/autotask/i;->c:Ljava/lang/Object;

    check-cast v0, Lcom/miui/powercenter/autotask/OperationEditFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/miui/powercenter/autotask/m$b;->a:Lcom/miui/powercenter/autotask/m;

    iget-object v1, v1, Lcom/miui/powercenter/autotask/i;->b:Lcom/miui/powercenter/autotask/AutoTask;

    new-instance v2, Lcom/miui/powercenter/autotask/m$b$a;

    invoke-direct {v2, p0}, Lcom/miui/powercenter/autotask/m$b$a;-><init>(Lcom/miui/powercenter/autotask/m$b;)V

    invoke-static {v0, v1, p1, p2, v2}, Lcom/miui/powercenter/autotask/n;->a(Landroid/content/Context;Lcom/miui/powercenter/autotask/AutoTask;Ljava/lang/String;Ljava/lang/Object;Lcom/miui/powercenter/autotask/n$c;)V

    const/4 p1, 0x1

    return p1
.end method
