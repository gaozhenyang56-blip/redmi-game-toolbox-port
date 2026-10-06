.class public Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$b;,
        Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$c;
    }
.end annotation


# instance fields
.field private a:Landroid/widget/AdapterView$OnItemClickListener;

.field private b:Landroid/widget/ListView;

.field private c:Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$b;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/miui/powercenter/deepsave/IdeaModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    new-instance v0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$a;

    invoke-direct {v0, p0}, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$a;-><init>(Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;)V

    iput-object v0, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->a:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$b;

    invoke-direct {v0, p0, p0}, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$b;-><init>(Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->c:Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$b;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->d:Ljava/util/ArrayList;

    return-void
.end method

.method static synthetic c0(Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;)Ljava/util/ArrayList;
    .locals 0

    iget-object p0, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic d0(Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->e0(Ljava/lang/String;)V

    return-void
.end method

.method private e0(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "miui.intent.action.POWER_CENTER_WEBVIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "url"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {p0, v0}, Lx4/f1;->R(Landroid/content/Context;Landroid/content/Intent;)Z

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const p1, 0x7f0e03c8

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    const p1, 0x7f0b06cc

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->a:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object p1, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->b:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->c:Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity$b;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "idea_list"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Parcelable;

    iget-object v1, p0, Lcom/miui/powercenter/deepsave/BatterySaveIdeaActivity;->d:Ljava/util/ArrayList;

    check-cast v0, Lcom/miui/powercenter/deepsave/IdeaModel;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method
