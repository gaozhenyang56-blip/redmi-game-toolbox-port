.class Lmiuix/appcompat/view/menu/MenuItemImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/b$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiuix/appcompat/view/menu/MenuItemImpl;->setSupportActionProvider(Landroidx/core/view/b;)Lw/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiuix/appcompat/view/menu/MenuItemImpl;


# direct methods
.method constructor <init>(Lmiuix/appcompat/view/menu/MenuItemImpl;)V
    .locals 0

    iput-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl$1;->this$0:Lmiuix/appcompat/view/menu/MenuItemImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionProviderVisibilityChanged(Z)V
    .locals 1

    iget-object p1, p0, Lmiuix/appcompat/view/menu/MenuItemImpl$1;->this$0:Lmiuix/appcompat/view/menu/MenuItemImpl;

    iget-object v0, p1, Lmiuix/appcompat/view/menu/MenuItemImpl;->mMenu:Lmiuix/appcompat/view/menu/MenuBuilder;

    invoke-virtual {v0, p1}, Lmiuix/appcompat/view/menu/MenuBuilder;->onItemVisibleChanged(Lmiuix/appcompat/view/menu/MenuItemImpl;)V

    return-void
.end method
