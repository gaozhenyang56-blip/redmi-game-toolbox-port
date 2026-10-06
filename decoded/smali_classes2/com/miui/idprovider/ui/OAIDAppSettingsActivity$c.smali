.class final Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$c;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->i0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;


# direct methods
.method constructor <init>(Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$c;->a:Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$c;->invoke()V

    sget-object v0, Loj/t;->a:Loj/t;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    iget-object v0, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$c;->a:Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$c;->a:Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity$c;->a:Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;

    invoke-static {v0}, Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;->f0(Lcom/miui/idprovider/ui/OAIDAppSettingsActivity;)Lt9/e;

    move-result-object v0

    invoke-static {v0}, Lbk/m;->b(Ljava/lang/Object;)V

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$h;->notifyDataSetChanged()V

    :cond_1
    :goto_0
    return-void
.end method
