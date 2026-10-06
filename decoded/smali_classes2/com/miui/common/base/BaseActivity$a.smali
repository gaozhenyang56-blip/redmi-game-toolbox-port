.class Lcom/miui/common/base/BaseActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/common/base/BaseActivity;->customizeActionBar(Landroid/content/res/Configuration;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lmiuix/appcompat/app/ActionBar;

.field final synthetic b:Lcom/miui/common/base/BaseActivity;


# direct methods
.method constructor <init>(Lcom/miui/common/base/BaseActivity;Lmiuix/appcompat/app/ActionBar;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/base/BaseActivity$a;->b:Lcom/miui/common/base/BaseActivity;

    iput-object p2, p0, Lcom/miui/common/base/BaseActivity$a;->a:Lmiuix/appcompat/app/ActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity$a;->a:Lmiuix/appcompat/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(I)V

    iget-object v0, p0, Lcom/miui/common/base/BaseActivity$a;->a:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    return-void
.end method
