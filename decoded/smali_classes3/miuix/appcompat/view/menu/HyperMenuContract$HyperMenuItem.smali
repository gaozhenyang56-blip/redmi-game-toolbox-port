.class public Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/view/menu/HyperMenuContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HyperMenuItem"
.end annotation


# instance fields
.field private final itemId:I

.field private final menuItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->menuItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lmiuix/appcompat/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result p1

    goto :goto_0

    :cond_0
    const/16 p1, -0xc8

    :goto_0
    iput p1, p0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->itemId:I

    return-void
.end method

.method public constructor <init>(Lmiuix/appcompat/internal/view/menu/MenuItemImpl;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->menuItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    iput p2, p0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->itemId:I

    return-void
.end method


# virtual methods
.method public getItemId()I
    .locals 1

    iget v0, p0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->itemId:I

    return v0
.end method

.method public getMenuItem()Lmiuix/appcompat/internal/view/menu/MenuItemImpl;
    .locals 1

    iget-object v0, p0, Lmiuix/appcompat/view/menu/HyperMenuContract$HyperMenuItem;->menuItem:Lmiuix/appcompat/internal/view/menu/MenuItemImpl;

    return-object v0
.end method
