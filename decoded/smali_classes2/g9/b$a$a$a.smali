.class Lg9/b$a$a$a;
.super Li9/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lg9/b$a$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lg9/b$a$a;


# direct methods
.method constructor <init>(Lg9/b$a$a;)V
    .locals 0

    iput-object p1, p0, Lg9/b$a$a$a;->a:Lg9/b$a$a;

    invoke-direct {p0}, Li9/a;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/miui/globalsatisfaction/bean/Questionnaire;",
            ">;)V"
        }
    .end annotation

    const-string v0, "globalsatisfaction_GlobalSatisfactionManager"

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkValidQuestionnaireToNotification: list = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ll9/b;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/globalsatisfaction/bean/Questionnaire;

    iget-object v1, p0, Lg9/b$a$a$a;->a:Lg9/b$a$a;

    iget-object v1, v1, Lg9/b$a$a;->a:Lg9/b$a;

    iget-object v1, v1, Lg9/b$a;->a:Landroid/content/Context;

    invoke-static {v0, v1}, Lj9/a;->b(Lcom/miui/globalsatisfaction/bean/Questionnaire;Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v1}, Lcom/miui/globalsatisfaction/bean/Questionnaire;->updateShowState(ZZ)V

    invoke-static {}, Li9/b;->o()Li9/b;

    move-result-object v0

    invoke-virtual {v0, p1}, Li9/b;->M(Ljava/util/List;)V

    return-void

    :cond_1
    :goto_0
    const-string p1, "checkValidQuestionnaireToNotification: fail"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
