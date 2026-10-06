.class Lcom/miui/gamebooster/ui/WelcomActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw8/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/gamebooster/ui/WelcomActivity;->n0(Ljava/lang/Boolean;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/gamebooster/ui/WelcomActivity;


# direct methods
.method constructor <init>(Lcom/miui/gamebooster/ui/WelcomActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/gamebooster/ui/WelcomActivity$a;->a:Lcom/miui/gamebooster/ui/WelcomActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, La8/o0;->x(Z)V

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WelcomActivity$a;->a:Lcom/miui/gamebooster/ui/WelcomActivity;

    invoke-static {v0}, Lcom/miui/gamebooster/ui/WelcomActivity;->g0(Lcom/miui/gamebooster/ui/WelcomActivity;)V

    return-void
.end method

.method public b()V
    .locals 1

    iget-object v0, p0, Lcom/miui/gamebooster/ui/WelcomActivity$a;->a:Lcom/miui/gamebooster/ui/WelcomActivity;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
