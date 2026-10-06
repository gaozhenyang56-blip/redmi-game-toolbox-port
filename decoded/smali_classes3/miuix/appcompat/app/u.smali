.class public final synthetic Lmiuix/appcompat/app/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lmiuix/appcompat/app/Fragment;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lmiuix/appcompat/app/Fragment;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/appcompat/app/u;->a:Lmiuix/appcompat/app/Fragment;

    iput-object p2, p0, Lmiuix/appcompat/app/u;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lmiuix/appcompat/app/u;->a:Lmiuix/appcompat/app/Fragment;

    iget-object v1, p0, Lmiuix/appcompat/app/u;->b:Landroid/view/View;

    invoke-static {v0, v1}, Lmiuix/appcompat/app/Fragment;->a0(Lmiuix/appcompat/app/Fragment;Landroid/view/View;)V

    return-void
.end method
