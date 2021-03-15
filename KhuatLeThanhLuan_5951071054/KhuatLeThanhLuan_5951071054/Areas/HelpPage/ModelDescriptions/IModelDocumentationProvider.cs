using System;
using System.Reflection;

namespace KhuatLeThanhLuan_5951071054.Areas.HelpPage.ModelDescriptions
{
    public interface IModelDocumentationProvider
    {
        string GetDocumentation(MemberInfo member);

        string GetDocumentation(Type type);
    }
}