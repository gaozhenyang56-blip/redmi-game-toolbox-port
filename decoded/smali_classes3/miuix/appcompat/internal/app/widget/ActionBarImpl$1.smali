.class Lmiuix/appcompat/internal/app/widget/ActionBarImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/appcompat/app/ActionBar$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/internal/app/widget/ActionBarImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Landroidx/appcompat/app/ActionBar$d;Landroidx/fragment/app/s;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$e;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroidx/appcompat/app/ActionBar$e;->onTabReselected(Landroidx/appcompat/app/ActionBar$d;Landroidx/fragment/app/s;)V

    :cond_0
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$e;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/app/ActionBar$e;->onTabReselected(Landroidx/appcompat/app/ActionBar$d;Landroidx/fragment/app/s;)V

    :cond_1
    return-void
.end method

.method public onTabSelected(Landroidx/appcompat/app/ActionBar$d;Landroidx/fragment/app/s;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$e;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroidx/appcompat/app/ActionBar$e;->onTabSelected(Landroidx/appcompat/app/ActionBar$d;Landroidx/fragment/app/s;)V

    :cond_0
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$e;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/app/ActionBar$e;->onTabSelected(Landroidx/appcompat/app/ActionBar$d;Landroidx/fragment/app/s;)V

    :cond_1
    return-void
.end method

.method public onTabUnselected(Landroidx/appcompat/app/ActionBar$d;Landroidx/fragment/app/s;)V
    .locals 2

    move-object v0, p1

    check-cast v0, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$e;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$000(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$e;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Landroidx/appcompat/app/ActionBar$e;->onTabUnselected(Landroidx/appcompat/app/ActionBar$d;Landroidx/fragment/app/s;)V

    :cond_0
    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$e;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;->access$100(Lmiuix/appcompat/internal/app/widget/ActionBarImpl$TabImpl;)Landroidx/appcompat/app/ActionBar$e;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroidx/appcompat/app/ActionBar$e;->onTabUnselected(Landroidx/appcompat/app/ActionBar$d;Landroidx/fragment/app/s;)V

    :cond_1
    return-void
.end method
